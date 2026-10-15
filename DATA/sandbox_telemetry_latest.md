# sandbox_telemetry_parse — 2026-10-15 19:52:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1025506 lines=2273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2268 |
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
| `chromeBrowserPssKb` | {'int': 2268} |
| `chromeGpuPssKb` | {'int': 2268} |
| `chromeOtherPssKb` | {'int': 2268} |
| `chromeProcesses` | {'int': 2268} |
| `chromeProfiles` | {'int': 2268} |
| `chromeRendererMaxPssKb` | {'int': 2268} |
| `chromeRendererPssKb` | {'int': 2268} |
| `chromeRenderers` | {'int': 2268} |
| `chromeTabs` | {'int': 2268} |
| `chromeTabsProbedProfiles` | {'int': 2268} |
| `chromeUtilityPssKb` | {'int': 2268} |
| `desktopPssKb` | {'int': 2268} |
| `hostPssKb` | {'int': 2268} |
| `kind` | {'str': 2268} |
| `memAvailableKb` | {'int': 2268} |
| `memTotalKb` | {'int': 2268} |
| `otherPssKb` | {'int': 2268} |
| `processes` | {'int': 2268} |
| `pssFallbackProcesses` | {'int': 2268} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
