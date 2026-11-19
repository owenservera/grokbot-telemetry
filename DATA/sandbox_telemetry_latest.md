# sandbox_telemetry_parse — 2026-11-19 08:17:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1182776 lines=2623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2614 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2614} |
| `chromeGpuPssKb` | {'int': 2614} |
| `chromeOtherPssKb` | {'int': 2614} |
| `chromeProcesses` | {'int': 2614} |
| `chromeProfiles` | {'int': 2614} |
| `chromeRendererMaxPssKb` | {'int': 2614} |
| `chromeRendererPssKb` | {'int': 2614} |
| `chromeRenderers` | {'int': 2614} |
| `chromeTabs` | {'int': 2614} |
| `chromeTabsProbedProfiles` | {'int': 2614} |
| `chromeUtilityPssKb` | {'int': 2614} |
| `desktopPssKb` | {'int': 2614} |
| `hostPssKb` | {'int': 2614} |
| `kind` | {'str': 2614} |
| `memAvailableKb` | {'int': 2614} |
| `memTotalKb` | {'int': 2614} |
| `otherPssKb` | {'int': 2614} |
| `processes` | {'int': 2614} |
| `pssFallbackProcesses` | {'int': 2614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
