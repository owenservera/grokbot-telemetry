# sandbox_telemetry_parse — 2026-11-07 02:23:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=270323 lines=605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 596 |
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
| `chromeBrowserPssKb` | {'int': 596} |
| `chromeGpuPssKb` | {'int': 596} |
| `chromeOtherPssKb` | {'int': 596} |
| `chromeProcesses` | {'int': 596} |
| `chromeProfiles` | {'int': 596} |
| `chromeRendererMaxPssKb` | {'int': 596} |
| `chromeRendererPssKb` | {'int': 596} |
| `chromeRenderers` | {'int': 596} |
| `chromeTabs` | {'int': 596} |
| `chromeTabsProbedProfiles` | {'int': 596} |
| `chromeUtilityPssKb` | {'int': 596} |
| `desktopPssKb` | {'int': 596} |
| `hostPssKb` | {'int': 596} |
| `kind` | {'str': 596} |
| `memAvailableKb` | {'int': 596} |
| `memTotalKb` | {'int': 596} |
| `otherPssKb` | {'int': 596} |
| `processes` | {'int': 596} |
| `pssFallbackProcesses` | {'int': 596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
