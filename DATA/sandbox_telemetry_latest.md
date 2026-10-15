# sandbox_telemetry_parse — 2026-10-15 20:13:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1034998 lines=2294
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2289 |
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
| `chromeBrowserPssKb` | {'int': 2289} |
| `chromeGpuPssKb` | {'int': 2289} |
| `chromeOtherPssKb` | {'int': 2289} |
| `chromeProcesses` | {'int': 2289} |
| `chromeProfiles` | {'int': 2289} |
| `chromeRendererMaxPssKb` | {'int': 2289} |
| `chromeRendererPssKb` | {'int': 2289} |
| `chromeRenderers` | {'int': 2289} |
| `chromeTabs` | {'int': 2289} |
| `chromeTabsProbedProfiles` | {'int': 2289} |
| `chromeUtilityPssKb` | {'int': 2289} |
| `desktopPssKb` | {'int': 2289} |
| `hostPssKb` | {'int': 2289} |
| `kind` | {'str': 2289} |
| `memAvailableKb` | {'int': 2289} |
| `memTotalKb` | {'int': 2289} |
| `otherPssKb` | {'int': 2289} |
| `processes` | {'int': 2289} |
| `pssFallbackProcesses` | {'int': 2289} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
