# sandbox_telemetry_parse — 2026-10-06 10:37:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=318938 lines=704
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 699 |
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
| `chromeBrowserPssKb` | {'int': 699} |
| `chromeGpuPssKb` | {'int': 699} |
| `chromeOtherPssKb` | {'int': 699} |
| `chromeProcesses` | {'int': 699} |
| `chromeProfiles` | {'int': 699} |
| `chromeRendererMaxPssKb` | {'int': 699} |
| `chromeRendererPssKb` | {'int': 699} |
| `chromeRenderers` | {'int': 699} |
| `chromeTabs` | {'int': 699} |
| `chromeTabsProbedProfiles` | {'int': 699} |
| `chromeUtilityPssKb` | {'int': 699} |
| `desktopPssKb` | {'int': 699} |
| `hostPssKb` | {'int': 699} |
| `kind` | {'str': 699} |
| `memAvailableKb` | {'int': 699} |
| `memTotalKb` | {'int': 699} |
| `otherPssKb` | {'int': 699} |
| `processes` | {'int': 699} |
| `pssFallbackProcesses` | {'int': 699} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
