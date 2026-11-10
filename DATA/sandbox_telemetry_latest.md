# sandbox_telemetry_parse — 2026-11-11 00:41:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1403342 lines=3109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3100 |
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
| `chromeBrowserPssKb` | {'int': 3100} |
| `chromeGpuPssKb` | {'int': 3100} |
| `chromeOtherPssKb` | {'int': 3100} |
| `chromeProcesses` | {'int': 3100} |
| `chromeProfiles` | {'int': 3100} |
| `chromeRendererMaxPssKb` | {'int': 3100} |
| `chromeRendererPssKb` | {'int': 3100} |
| `chromeRenderers` | {'int': 3100} |
| `chromeTabs` | {'int': 3100} |
| `chromeTabsProbedProfiles` | {'int': 3100} |
| `chromeUtilityPssKb` | {'int': 3100} |
| `desktopPssKb` | {'int': 3100} |
| `hostPssKb` | {'int': 3100} |
| `kind` | {'str': 3100} |
| `memAvailableKb` | {'int': 3100} |
| `memTotalKb` | {'int': 3100} |
| `otherPssKb` | {'int': 3100} |
| `processes` | {'int': 3100} |
| `pssFallbackProcesses` | {'int': 3100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
