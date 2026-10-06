# sandbox_telemetry_parse — 2026-10-06 21:44:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=619898 lines=1364
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1359 |
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
| `chromeBrowserPssKb` | {'int': 1359} |
| `chromeGpuPssKb` | {'int': 1359} |
| `chromeOtherPssKb` | {'int': 1359} |
| `chromeProcesses` | {'int': 1359} |
| `chromeProfiles` | {'int': 1359} |
| `chromeRendererMaxPssKb` | {'int': 1359} |
| `chromeRendererPssKb` | {'int': 1359} |
| `chromeRenderers` | {'int': 1359} |
| `chromeTabs` | {'int': 1359} |
| `chromeTabsProbedProfiles` | {'int': 1359} |
| `chromeUtilityPssKb` | {'int': 1359} |
| `desktopPssKb` | {'int': 1359} |
| `hostPssKb` | {'int': 1359} |
| `kind` | {'str': 1359} |
| `memAvailableKb` | {'int': 1359} |
| `memTotalKb` | {'int': 1359} |
| `otherPssKb` | {'int': 1359} |
| `processes` | {'int': 1359} |
| `pssFallbackProcesses` | {'int': 1359} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
