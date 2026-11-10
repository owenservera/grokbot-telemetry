# sandbox_telemetry_parse — 2026-11-10 01:03:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=915000 lines=2030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2021 |
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
| `chromeBrowserPssKb` | {'int': 2021} |
| `chromeGpuPssKb` | {'int': 2021} |
| `chromeOtherPssKb` | {'int': 2021} |
| `chromeProcesses` | {'int': 2021} |
| `chromeProfiles` | {'int': 2021} |
| `chromeRendererMaxPssKb` | {'int': 2021} |
| `chromeRendererPssKb` | {'int': 2021} |
| `chromeRenderers` | {'int': 2021} |
| `chromeTabs` | {'int': 2021} |
| `chromeTabsProbedProfiles` | {'int': 2021} |
| `chromeUtilityPssKb` | {'int': 2021} |
| `desktopPssKb` | {'int': 2021} |
| `hostPssKb` | {'int': 2021} |
| `kind` | {'str': 2021} |
| `memAvailableKb` | {'int': 2021} |
| `memTotalKb` | {'int': 2021} |
| `otherPssKb` | {'int': 2021} |
| `processes` | {'int': 2021} |
| `pssFallbackProcesses` | {'int': 2021} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
