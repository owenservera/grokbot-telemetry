# sandbox_telemetry_parse — 2026-10-16 00:41:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1134438 lines=2514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2509 |
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
| `chromeBrowserPssKb` | {'int': 2509} |
| `chromeGpuPssKb` | {'int': 2509} |
| `chromeOtherPssKb` | {'int': 2509} |
| `chromeProcesses` | {'int': 2509} |
| `chromeProfiles` | {'int': 2509} |
| `chromeRendererMaxPssKb` | {'int': 2509} |
| `chromeRendererPssKb` | {'int': 2509} |
| `chromeRenderers` | {'int': 2509} |
| `chromeTabs` | {'int': 2509} |
| `chromeTabsProbedProfiles` | {'int': 2509} |
| `chromeUtilityPssKb` | {'int': 2509} |
| `desktopPssKb` | {'int': 2509} |
| `hostPssKb` | {'int': 2509} |
| `kind` | {'str': 2509} |
| `memAvailableKb` | {'int': 2509} |
| `memTotalKb` | {'int': 2509} |
| `otherPssKb` | {'int': 2509} |
| `processes` | {'int': 2509} |
| `pssFallbackProcesses` | {'int': 2509} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
