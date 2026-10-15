# sandbox_telemetry_parse — 2026-10-15 19:40:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1020082 lines=2261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2256 |
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
| `chromeBrowserPssKb` | {'int': 2256} |
| `chromeGpuPssKb` | {'int': 2256} |
| `chromeOtherPssKb` | {'int': 2256} |
| `chromeProcesses` | {'int': 2256} |
| `chromeProfiles` | {'int': 2256} |
| `chromeRendererMaxPssKb` | {'int': 2256} |
| `chromeRendererPssKb` | {'int': 2256} |
| `chromeRenderers` | {'int': 2256} |
| `chromeTabs` | {'int': 2256} |
| `chromeTabsProbedProfiles` | {'int': 2256} |
| `chromeUtilityPssKb` | {'int': 2256} |
| `desktopPssKb` | {'int': 2256} |
| `hostPssKb` | {'int': 2256} |
| `kind` | {'str': 2256} |
| `memAvailableKb` | {'int': 2256} |
| `memTotalKb` | {'int': 2256} |
| `otherPssKb` | {'int': 2256} |
| `processes` | {'int': 2256} |
| `pssFallbackProcesses` | {'int': 2256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
