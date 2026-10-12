# sandbox_telemetry_parse — 2026-10-12 19:45:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=652624 lines=1448
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1443 |
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
| `chromeBrowserPssKb` | {'int': 1443} |
| `chromeGpuPssKb` | {'int': 1443} |
| `chromeOtherPssKb` | {'int': 1443} |
| `chromeProcesses` | {'int': 1443} |
| `chromeProfiles` | {'int': 1443} |
| `chromeRendererMaxPssKb` | {'int': 1443} |
| `chromeRendererPssKb` | {'int': 1443} |
| `chromeRenderers` | {'int': 1443} |
| `chromeTabs` | {'int': 1443} |
| `chromeTabsProbedProfiles` | {'int': 1443} |
| `chromeUtilityPssKb` | {'int': 1443} |
| `desktopPssKb` | {'int': 1443} |
| `hostPssKb` | {'int': 1443} |
| `kind` | {'str': 1443} |
| `memAvailableKb` | {'int': 1443} |
| `memTotalKb` | {'int': 1443} |
| `otherPssKb` | {'int': 1443} |
| `processes` | {'int': 1443} |
| `pssFallbackProcesses` | {'int': 1443} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
