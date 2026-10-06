# sandbox_telemetry_parse — 2026-10-06 03:42:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=131522 lines=293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 288 |
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
| `chromeBrowserPssKb` | {'int': 288} |
| `chromeGpuPssKb` | {'int': 288} |
| `chromeOtherPssKb` | {'int': 288} |
| `chromeProcesses` | {'int': 288} |
| `chromeProfiles` | {'int': 288} |
| `chromeRendererMaxPssKb` | {'int': 288} |
| `chromeRendererPssKb` | {'int': 288} |
| `chromeRenderers` | {'int': 288} |
| `chromeTabs` | {'int': 288} |
| `chromeTabsProbedProfiles` | {'int': 288} |
| `chromeUtilityPssKb` | {'int': 288} |
| `desktopPssKb` | {'int': 288} |
| `hostPssKb` | {'int': 288} |
| `kind` | {'str': 288} |
| `memAvailableKb` | {'int': 288} |
| `memTotalKb` | {'int': 288} |
| `otherPssKb` | {'int': 288} |
| `processes` | {'int': 288} |
| `pssFallbackProcesses` | {'int': 288} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
