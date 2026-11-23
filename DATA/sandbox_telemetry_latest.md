# sandbox_telemetry_parse — 2026-11-23 15:34:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1894775 lines=4202
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4187 |
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
| `chromeBrowserPssKb` | {'int': 4187} |
| `chromeGpuPssKb` | {'int': 4187} |
| `chromeOtherPssKb` | {'int': 4187} |
| `chromeProcesses` | {'int': 4187} |
| `chromeProfiles` | {'int': 4187} |
| `chromeRendererMaxPssKb` | {'int': 4187} |
| `chromeRendererPssKb` | {'int': 4187} |
| `chromeRenderers` | {'int': 4187} |
| `chromeTabs` | {'int': 4187} |
| `chromeTabsProbedProfiles` | {'int': 4187} |
| `chromeUtilityPssKb` | {'int': 4187} |
| `desktopPssKb` | {'int': 4187} |
| `hostPssKb` | {'int': 4187} |
| `kind` | {'str': 4187} |
| `memAvailableKb` | {'int': 4187} |
| `memTotalKb` | {'int': 4187} |
| `otherPssKb` | {'int': 4187} |
| `processes` | {'int': 4187} |
| `pssFallbackProcesses` | {'int': 4187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
