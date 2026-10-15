# sandbox_telemetry_parse — 2026-10-16 01:40:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1157490 lines=2565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2560 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2560} |
| `chromeGpuPssKb` | {'int': 2560} |
| `chromeOtherPssKb` | {'int': 2560} |
| `chromeProcesses` | {'int': 2560} |
| `chromeProfiles` | {'int': 2560} |
| `chromeRendererMaxPssKb` | {'int': 2560} |
| `chromeRendererPssKb` | {'int': 2560} |
| `chromeRenderers` | {'int': 2560} |
| `chromeTabs` | {'int': 2560} |
| `chromeTabsProbedProfiles` | {'int': 2560} |
| `chromeUtilityPssKb` | {'int': 2560} |
| `desktopPssKb` | {'int': 2560} |
| `hostPssKb` | {'int': 2560} |
| `kind` | {'str': 2560} |
| `memAvailableKb` | {'int': 2560} |
| `memTotalKb` | {'int': 2560} |
| `otherPssKb` | {'int': 2560} |
| `processes` | {'int': 2560} |
| `pssFallbackProcesses` | {'int': 2560} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
