# sandbox_telemetry_parse — 2026-10-06 23:33:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=669602 lines=1473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1468 |
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
| `chromeBrowserPssKb` | {'int': 1468} |
| `chromeGpuPssKb` | {'int': 1468} |
| `chromeOtherPssKb` | {'int': 1468} |
| `chromeProcesses` | {'int': 1468} |
| `chromeProfiles` | {'int': 1468} |
| `chromeRendererMaxPssKb` | {'int': 1468} |
| `chromeRendererPssKb` | {'int': 1468} |
| `chromeRenderers` | {'int': 1468} |
| `chromeTabs` | {'int': 1468} |
| `chromeTabsProbedProfiles` | {'int': 1468} |
| `chromeUtilityPssKb` | {'int': 1468} |
| `desktopPssKb` | {'int': 1468} |
| `hostPssKb` | {'int': 1468} |
| `kind` | {'str': 1468} |
| `memAvailableKb` | {'int': 1468} |
| `memTotalKb` | {'int': 1468} |
| `otherPssKb` | {'int': 1468} |
| `processes` | {'int': 1468} |
| `pssFallbackProcesses` | {'int': 1468} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
