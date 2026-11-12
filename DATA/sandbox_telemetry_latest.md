# sandbox_telemetry_parse — 2026-11-12 18:34:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2269504 lines=5023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5014 |
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
| `chromeBrowserPssKb` | {'int': 5014} |
| `chromeGpuPssKb` | {'int': 5014} |
| `chromeOtherPssKb` | {'int': 5014} |
| `chromeProcesses` | {'int': 5014} |
| `chromeProfiles` | {'int': 5014} |
| `chromeRendererMaxPssKb` | {'int': 5014} |
| `chromeRendererPssKb` | {'int': 5014} |
| `chromeRenderers` | {'int': 5014} |
| `chromeTabs` | {'int': 5014} |
| `chromeTabsProbedProfiles` | {'int': 5014} |
| `chromeUtilityPssKb` | {'int': 5014} |
| `desktopPssKb` | {'int': 5014} |
| `hostPssKb` | {'int': 5014} |
| `kind` | {'str': 5014} |
| `memAvailableKb` | {'int': 5014} |
| `memTotalKb` | {'int': 5014} |
| `otherPssKb` | {'int': 5014} |
| `processes` | {'int': 5014} |
| `pssFallbackProcesses` | {'int': 5014} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
