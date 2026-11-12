# sandbox_telemetry_parse — 2026-11-12 18:41:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2272675 lines=5030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5021 |
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
| `chromeBrowserPssKb` | {'int': 5021} |
| `chromeGpuPssKb` | {'int': 5021} |
| `chromeOtherPssKb` | {'int': 5021} |
| `chromeProcesses` | {'int': 5021} |
| `chromeProfiles` | {'int': 5021} |
| `chromeRendererMaxPssKb` | {'int': 5021} |
| `chromeRendererPssKb` | {'int': 5021} |
| `chromeRenderers` | {'int': 5021} |
| `chromeTabs` | {'int': 5021} |
| `chromeTabsProbedProfiles` | {'int': 5021} |
| `chromeUtilityPssKb` | {'int': 5021} |
| `desktopPssKb` | {'int': 5021} |
| `hostPssKb` | {'int': 5021} |
| `kind` | {'str': 5021} |
| `memAvailableKb` | {'int': 5021} |
| `memTotalKb` | {'int': 5021} |
| `otherPssKb` | {'int': 5021} |
| `processes` | {'int': 5021} |
| `pssFallbackProcesses` | {'int': 5021} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
