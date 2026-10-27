# sandbox_telemetry_parse — 2026-10-27 02:17:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=265376 lines=590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 585 |
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
| `chromeBrowserPssKb` | {'int': 585} |
| `chromeGpuPssKb` | {'int': 585} |
| `chromeOtherPssKb` | {'int': 585} |
| `chromeProcesses` | {'int': 585} |
| `chromeProfiles` | {'int': 585} |
| `chromeRendererMaxPssKb` | {'int': 585} |
| `chromeRendererPssKb` | {'int': 585} |
| `chromeRenderers` | {'int': 585} |
| `chromeTabs` | {'int': 585} |
| `chromeTabsProbedProfiles` | {'int': 585} |
| `chromeUtilityPssKb` | {'int': 585} |
| `desktopPssKb` | {'int': 585} |
| `hostPssKb` | {'int': 585} |
| `kind` | {'str': 585} |
| `memAvailableKb` | {'int': 585} |
| `memTotalKb` | {'int': 585} |
| `otherPssKb` | {'int': 585} |
| `processes` | {'int': 585} |
| `pssFallbackProcesses` | {'int': 585} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
