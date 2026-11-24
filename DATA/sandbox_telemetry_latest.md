# sandbox_telemetry_parse — 2026-11-24 01:26:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2073982 lines=4598
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4583 |
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
| `chromeBrowserPssKb` | {'int': 4583} |
| `chromeGpuPssKb` | {'int': 4583} |
| `chromeOtherPssKb` | {'int': 4583} |
| `chromeProcesses` | {'int': 4583} |
| `chromeProfiles` | {'int': 4583} |
| `chromeRendererMaxPssKb` | {'int': 4583} |
| `chromeRendererPssKb` | {'int': 4583} |
| `chromeRenderers` | {'int': 4583} |
| `chromeTabs` | {'int': 4583} |
| `chromeTabsProbedProfiles` | {'int': 4583} |
| `chromeUtilityPssKb` | {'int': 4583} |
| `desktopPssKb` | {'int': 4583} |
| `hostPssKb` | {'int': 4583} |
| `kind` | {'str': 4583} |
| `memAvailableKb` | {'int': 4583} |
| `memTotalKb` | {'int': 4583} |
| `otherPssKb` | {'int': 4583} |
| `processes` | {'int': 4583} |
| `pssFallbackProcesses` | {'int': 4583} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
