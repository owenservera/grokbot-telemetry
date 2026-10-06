# sandbox_telemetry_parse — 2026-10-06 15:25:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=448442 lines=988
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 983 |
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
| `chromeBrowserPssKb` | {'int': 983} |
| `chromeGpuPssKb` | {'int': 983} |
| `chromeOtherPssKb` | {'int': 983} |
| `chromeProcesses` | {'int': 983} |
| `chromeProfiles` | {'int': 983} |
| `chromeRendererMaxPssKb` | {'int': 983} |
| `chromeRendererPssKb` | {'int': 983} |
| `chromeRenderers` | {'int': 983} |
| `chromeTabs` | {'int': 983} |
| `chromeTabsProbedProfiles` | {'int': 983} |
| `chromeUtilityPssKb` | {'int': 983} |
| `desktopPssKb` | {'int': 983} |
| `hostPssKb` | {'int': 983} |
| `kind` | {'str': 983} |
| `memAvailableKb` | {'int': 983} |
| `memTotalKb` | {'int': 983} |
| `otherPssKb` | {'int': 983} |
| `processes` | {'int': 983} |
| `pssFallbackProcesses` | {'int': 983} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
