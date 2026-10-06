# sandbox_telemetry_parse — 2026-10-06 22:41:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=645890 lines=1421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1416 |
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
| `chromeBrowserPssKb` | {'int': 1416} |
| `chromeGpuPssKb` | {'int': 1416} |
| `chromeOtherPssKb` | {'int': 1416} |
| `chromeProcesses` | {'int': 1416} |
| `chromeProfiles` | {'int': 1416} |
| `chromeRendererMaxPssKb` | {'int': 1416} |
| `chromeRendererPssKb` | {'int': 1416} |
| `chromeRenderers` | {'int': 1416} |
| `chromeTabs` | {'int': 1416} |
| `chromeTabsProbedProfiles` | {'int': 1416} |
| `chromeUtilityPssKb` | {'int': 1416} |
| `desktopPssKb` | {'int': 1416} |
| `hostPssKb` | {'int': 1416} |
| `kind` | {'str': 1416} |
| `memAvailableKb` | {'int': 1416} |
| `memTotalKb` | {'int': 1416} |
| `otherPssKb` | {'int': 1416} |
| `processes` | {'int': 1416} |
| `pssFallbackProcesses` | {'int': 1416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
