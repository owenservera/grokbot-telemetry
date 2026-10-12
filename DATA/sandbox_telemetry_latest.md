# sandbox_telemetry_parse — 2026-10-12 20:38:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=663020 lines=1471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1466 |
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
| `chromeBrowserPssKb` | {'int': 1466} |
| `chromeGpuPssKb` | {'int': 1466} |
| `chromeOtherPssKb` | {'int': 1466} |
| `chromeProcesses` | {'int': 1466} |
| `chromeProfiles` | {'int': 1466} |
| `chromeRendererMaxPssKb` | {'int': 1466} |
| `chromeRendererPssKb` | {'int': 1466} |
| `chromeRenderers` | {'int': 1466} |
| `chromeTabs` | {'int': 1466} |
| `chromeTabsProbedProfiles` | {'int': 1466} |
| `chromeUtilityPssKb` | {'int': 1466} |
| `desktopPssKb` | {'int': 1466} |
| `hostPssKb` | {'int': 1466} |
| `kind` | {'str': 1466} |
| `memAvailableKb` | {'int': 1466} |
| `memTotalKb` | {'int': 1466} |
| `otherPssKb` | {'int': 1466} |
| `processes` | {'int': 1466} |
| `pssFallbackProcesses` | {'int': 1466} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
