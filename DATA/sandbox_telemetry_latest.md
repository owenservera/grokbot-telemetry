# sandbox_telemetry_parse — 2026-10-15 14:32:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=904822 lines=2006
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2001 |
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
| `chromeBrowserPssKb` | {'int': 2001} |
| `chromeGpuPssKb` | {'int': 2001} |
| `chromeOtherPssKb` | {'int': 2001} |
| `chromeProcesses` | {'int': 2001} |
| `chromeProfiles` | {'int': 2001} |
| `chromeRendererMaxPssKb` | {'int': 2001} |
| `chromeRendererPssKb` | {'int': 2001} |
| `chromeRenderers` | {'int': 2001} |
| `chromeTabs` | {'int': 2001} |
| `chromeTabsProbedProfiles` | {'int': 2001} |
| `chromeUtilityPssKb` | {'int': 2001} |
| `desktopPssKb` | {'int': 2001} |
| `hostPssKb` | {'int': 2001} |
| `kind` | {'str': 2001} |
| `memAvailableKb` | {'int': 2001} |
| `memTotalKb` | {'int': 2001} |
| `otherPssKb` | {'int': 2001} |
| `processes` | {'int': 2001} |
| `pssFallbackProcesses` | {'int': 2001} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
