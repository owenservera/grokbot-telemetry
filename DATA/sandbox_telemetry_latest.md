# sandbox_telemetry_parse — 2026-10-06 09:30:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=288842 lines=638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 633 |
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
| `chromeBrowserPssKb` | {'int': 633} |
| `chromeGpuPssKb` | {'int': 633} |
| `chromeOtherPssKb` | {'int': 633} |
| `chromeProcesses` | {'int': 633} |
| `chromeProfiles` | {'int': 633} |
| `chromeRendererMaxPssKb` | {'int': 633} |
| `chromeRendererPssKb` | {'int': 633} |
| `chromeRenderers` | {'int': 633} |
| `chromeTabs` | {'int': 633} |
| `chromeTabsProbedProfiles` | {'int': 633} |
| `chromeUtilityPssKb` | {'int': 633} |
| `desktopPssKb` | {'int': 633} |
| `hostPssKb` | {'int': 633} |
| `kind` | {'str': 633} |
| `memAvailableKb` | {'int': 633} |
| `memTotalKb` | {'int': 633} |
| `otherPssKb` | {'int': 633} |
| `processes` | {'int': 633} |
| `pssFallbackProcesses` | {'int': 633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
