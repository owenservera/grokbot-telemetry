# sandbox_telemetry_parse — 2026-10-06 21:55:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=624914 lines=1375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1370 |
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
| `chromeBrowserPssKb` | {'int': 1370} |
| `chromeGpuPssKb` | {'int': 1370} |
| `chromeOtherPssKb` | {'int': 1370} |
| `chromeProcesses` | {'int': 1370} |
| `chromeProfiles` | {'int': 1370} |
| `chromeRendererMaxPssKb` | {'int': 1370} |
| `chromeRendererPssKb` | {'int': 1370} |
| `chromeRenderers` | {'int': 1370} |
| `chromeTabs` | {'int': 1370} |
| `chromeTabsProbedProfiles` | {'int': 1370} |
| `chromeUtilityPssKb` | {'int': 1370} |
| `desktopPssKb` | {'int': 1370} |
| `hostPssKb` | {'int': 1370} |
| `kind` | {'str': 1370} |
| `memAvailableKb` | {'int': 1370} |
| `memTotalKb` | {'int': 1370} |
| `otherPssKb` | {'int': 1370} |
| `processes` | {'int': 1370} |
| `pssFallbackProcesses` | {'int': 1370} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
