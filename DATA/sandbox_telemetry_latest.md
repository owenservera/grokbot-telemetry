# sandbox_telemetry_parse — 2026-10-06 21:08:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=603482 lines=1328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1323 |
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
| `chromeBrowserPssKb` | {'int': 1323} |
| `chromeGpuPssKb` | {'int': 1323} |
| `chromeOtherPssKb` | {'int': 1323} |
| `chromeProcesses` | {'int': 1323} |
| `chromeProfiles` | {'int': 1323} |
| `chromeRendererMaxPssKb` | {'int': 1323} |
| `chromeRendererPssKb` | {'int': 1323} |
| `chromeRenderers` | {'int': 1323} |
| `chromeTabs` | {'int': 1323} |
| `chromeTabsProbedProfiles` | {'int': 1323} |
| `chromeUtilityPssKb` | {'int': 1323} |
| `desktopPssKb` | {'int': 1323} |
| `hostPssKb` | {'int': 1323} |
| `kind` | {'str': 1323} |
| `memAvailableKb` | {'int': 1323} |
| `memTotalKb` | {'int': 1323} |
| `otherPssKb` | {'int': 1323} |
| `processes` | {'int': 1323} |
| `pssFallbackProcesses` | {'int': 1323} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
