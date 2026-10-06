# sandbox_telemetry_parse — 2026-10-06 22:57:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=653186 lines=1437
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1432 |
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
| `chromeBrowserPssKb` | {'int': 1432} |
| `chromeGpuPssKb` | {'int': 1432} |
| `chromeOtherPssKb` | {'int': 1432} |
| `chromeProcesses` | {'int': 1432} |
| `chromeProfiles` | {'int': 1432} |
| `chromeRendererMaxPssKb` | {'int': 1432} |
| `chromeRendererPssKb` | {'int': 1432} |
| `chromeRenderers` | {'int': 1432} |
| `chromeTabs` | {'int': 1432} |
| `chromeTabsProbedProfiles` | {'int': 1432} |
| `chromeUtilityPssKb` | {'int': 1432} |
| `desktopPssKb` | {'int': 1432} |
| `hostPssKb` | {'int': 1432} |
| `kind` | {'str': 1432} |
| `memAvailableKb` | {'int': 1432} |
| `memTotalKb` | {'int': 1432} |
| `otherPssKb` | {'int': 1432} |
| `processes` | {'int': 1432} |
| `pssFallbackProcesses` | {'int': 1432} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
