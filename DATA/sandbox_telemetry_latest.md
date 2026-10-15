# sandbox_telemetry_parse — 2026-10-15 18:17:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=991154 lines=2197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2192 |
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
| `chromeBrowserPssKb` | {'int': 2192} |
| `chromeGpuPssKb` | {'int': 2192} |
| `chromeOtherPssKb` | {'int': 2192} |
| `chromeProcesses` | {'int': 2192} |
| `chromeProfiles` | {'int': 2192} |
| `chromeRendererMaxPssKb` | {'int': 2192} |
| `chromeRendererPssKb` | {'int': 2192} |
| `chromeRenderers` | {'int': 2192} |
| `chromeTabs` | {'int': 2192} |
| `chromeTabsProbedProfiles` | {'int': 2192} |
| `chromeUtilityPssKb` | {'int': 2192} |
| `desktopPssKb` | {'int': 2192} |
| `hostPssKb` | {'int': 2192} |
| `kind` | {'str': 2192} |
| `memAvailableKb` | {'int': 2192} |
| `memTotalKb` | {'int': 2192} |
| `otherPssKb` | {'int': 2192} |
| `processes` | {'int': 2192} |
| `pssFallbackProcesses` | {'int': 2192} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
