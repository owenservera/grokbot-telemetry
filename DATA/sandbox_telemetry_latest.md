# sandbox_telemetry_parse — 2026-10-07 16:27:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1124869 lines=2471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2466 |
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
| `chromeBrowserPssKb` | {'int': 2466} |
| `chromeGpuPssKb` | {'int': 2466} |
| `chromeOtherPssKb` | {'int': 2466} |
| `chromeProcesses` | {'int': 2466} |
| `chromeProfiles` | {'int': 2466} |
| `chromeRendererMaxPssKb` | {'int': 2466} |
| `chromeRendererPssKb` | {'int': 2466} |
| `chromeRenderers` | {'int': 2466} |
| `chromeTabs` | {'int': 2466} |
| `chromeTabsProbedProfiles` | {'int': 2466} |
| `chromeUtilityPssKb` | {'int': 2466} |
| `desktopPssKb` | {'int': 2466} |
| `hostPssKb` | {'int': 2466} |
| `kind` | {'str': 2466} |
| `memAvailableKb` | {'int': 2466} |
| `memTotalKb` | {'int': 2466} |
| `otherPssKb` | {'int': 2466} |
| `processes` | {'int': 2466} |
| `pssFallbackProcesses` | {'int': 2466} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
