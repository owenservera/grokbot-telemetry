# sandbox_telemetry_parse — 2026-10-06 14:59:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=436586 lines=962
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 957 |
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
| `chromeBrowserPssKb` | {'int': 957} |
| `chromeGpuPssKb` | {'int': 957} |
| `chromeOtherPssKb` | {'int': 957} |
| `chromeProcesses` | {'int': 957} |
| `chromeProfiles` | {'int': 957} |
| `chromeRendererMaxPssKb` | {'int': 957} |
| `chromeRendererPssKb` | {'int': 957} |
| `chromeRenderers` | {'int': 957} |
| `chromeTabs` | {'int': 957} |
| `chromeTabsProbedProfiles` | {'int': 957} |
| `chromeUtilityPssKb` | {'int': 957} |
| `desktopPssKb` | {'int': 957} |
| `hostPssKb` | {'int': 957} |
| `kind` | {'str': 957} |
| `memAvailableKb` | {'int': 957} |
| `memTotalKb` | {'int': 957} |
| `otherPssKb` | {'int': 957} |
| `processes` | {'int': 957} |
| `pssFallbackProcesses` | {'int': 957} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
