# sandbox_telemetry_parse — 2026-11-24 04:20:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2126429 lines=4714
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4699 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4699} |
| `chromeGpuPssKb` | {'int': 4699} |
| `chromeOtherPssKb` | {'int': 4699} |
| `chromeProcesses` | {'int': 4699} |
| `chromeProfiles` | {'int': 4699} |
| `chromeRendererMaxPssKb` | {'int': 4699} |
| `chromeRendererPssKb` | {'int': 4699} |
| `chromeRenderers` | {'int': 4699} |
| `chromeTabs` | {'int': 4699} |
| `chromeTabsProbedProfiles` | {'int': 4699} |
| `chromeUtilityPssKb` | {'int': 4699} |
| `desktopPssKb` | {'int': 4699} |
| `hostPssKb` | {'int': 4699} |
| `kind` | {'str': 4699} |
| `memAvailableKb` | {'int': 4699} |
| `memTotalKb` | {'int': 4699} |
| `otherPssKb` | {'int': 4699} |
| `processes` | {'int': 4699} |
| `pssFallbackProcesses` | {'int': 4699} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
