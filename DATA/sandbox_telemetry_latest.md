# sandbox_telemetry_parse — 2026-10-27 01:48:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=255420 lines=568
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 563 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 563} |
| `chromeGpuPssKb` | {'int': 563} |
| `chromeOtherPssKb` | {'int': 563} |
| `chromeProcesses` | {'int': 563} |
| `chromeProfiles` | {'int': 563} |
| `chromeRendererMaxPssKb` | {'int': 563} |
| `chromeRendererPssKb` | {'int': 563} |
| `chromeRenderers` | {'int': 563} |
| `chromeTabs` | {'int': 563} |
| `chromeTabsProbedProfiles` | {'int': 563} |
| `chromeUtilityPssKb` | {'int': 563} |
| `desktopPssKb` | {'int': 563} |
| `hostPssKb` | {'int': 563} |
| `kind` | {'str': 563} |
| `memAvailableKb` | {'int': 563} |
| `memTotalKb` | {'int': 563} |
| `otherPssKb` | {'int': 563} |
| `processes` | {'int': 563} |
| `pssFallbackProcesses` | {'int': 563} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
