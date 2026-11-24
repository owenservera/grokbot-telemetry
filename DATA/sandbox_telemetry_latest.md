# sandbox_telemetry_parse — 2026-11-24 09:48:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2232252 lines=4948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4933 |
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
| `chromeBrowserPssKb` | {'int': 4933} |
| `chromeGpuPssKb` | {'int': 4933} |
| `chromeOtherPssKb` | {'int': 4933} |
| `chromeProcesses` | {'int': 4933} |
| `chromeProfiles` | {'int': 4933} |
| `chromeRendererMaxPssKb` | {'int': 4933} |
| `chromeRendererPssKb` | {'int': 4933} |
| `chromeRenderers` | {'int': 4933} |
| `chromeTabs` | {'int': 4933} |
| `chromeTabsProbedProfiles` | {'int': 4933} |
| `chromeUtilityPssKb` | {'int': 4933} |
| `desktopPssKb` | {'int': 4933} |
| `hostPssKb` | {'int': 4933} |
| `kind` | {'str': 4933} |
| `memAvailableKb` | {'int': 4933} |
| `memTotalKb` | {'int': 4933} |
| `otherPssKb` | {'int': 4933} |
| `processes` | {'int': 4933} |
| `pssFallbackProcesses` | {'int': 4933} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
