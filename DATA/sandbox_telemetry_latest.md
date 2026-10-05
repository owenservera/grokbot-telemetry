# sandbox_telemetry_parse — 2026-10-06 00:24:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=42146 lines=97
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 92 |
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
| `chromeBrowserPssKb` | {'int': 92} |
| `chromeGpuPssKb` | {'int': 92} |
| `chromeOtherPssKb` | {'int': 92} |
| `chromeProcesses` | {'int': 92} |
| `chromeProfiles` | {'int': 92} |
| `chromeRendererMaxPssKb` | {'int': 92} |
| `chromeRendererPssKb` | {'int': 92} |
| `chromeRenderers` | {'int': 92} |
| `chromeTabs` | {'int': 92} |
| `chromeTabsProbedProfiles` | {'int': 92} |
| `chromeUtilityPssKb` | {'int': 92} |
| `desktopPssKb` | {'int': 92} |
| `hostPssKb` | {'int': 92} |
| `kind` | {'str': 92} |
| `memAvailableKb` | {'int': 92} |
| `memTotalKb` | {'int': 92} |
| `otherPssKb` | {'int': 92} |
| `processes` | {'int': 92} |
| `pssFallbackProcesses` | {'int': 92} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
