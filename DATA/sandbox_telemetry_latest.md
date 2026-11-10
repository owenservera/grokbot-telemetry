# sandbox_telemetry_parse — 2026-11-10 11:56:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1124024 lines=2492
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2483 |
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
| `chromeBrowserPssKb` | {'int': 2483} |
| `chromeGpuPssKb` | {'int': 2483} |
| `chromeOtherPssKb` | {'int': 2483} |
| `chromeProcesses` | {'int': 2483} |
| `chromeProfiles` | {'int': 2483} |
| `chromeRendererMaxPssKb` | {'int': 2483} |
| `chromeRendererPssKb` | {'int': 2483} |
| `chromeRenderers` | {'int': 2483} |
| `chromeTabs` | {'int': 2483} |
| `chromeTabsProbedProfiles` | {'int': 2483} |
| `chromeUtilityPssKb` | {'int': 2483} |
| `desktopPssKb` | {'int': 2483} |
| `hostPssKb` | {'int': 2483} |
| `kind` | {'str': 2483} |
| `memAvailableKb` | {'int': 2483} |
| `memTotalKb` | {'int': 2483} |
| `otherPssKb` | {'int': 2483} |
| `processes` | {'int': 2483} |
| `pssFallbackProcesses` | {'int': 2483} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
