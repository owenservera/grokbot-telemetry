# sandbox_telemetry_parse — 2026-10-06 00:34:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=46706 lines=107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 102 |
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
| `chromeBrowserPssKb` | {'int': 102} |
| `chromeGpuPssKb` | {'int': 102} |
| `chromeOtherPssKb` | {'int': 102} |
| `chromeProcesses` | {'int': 102} |
| `chromeProfiles` | {'int': 102} |
| `chromeRendererMaxPssKb` | {'int': 102} |
| `chromeRendererPssKb` | {'int': 102} |
| `chromeRenderers` | {'int': 102} |
| `chromeTabs` | {'int': 102} |
| `chromeTabsProbedProfiles` | {'int': 102} |
| `chromeUtilityPssKb` | {'int': 102} |
| `desktopPssKb` | {'int': 102} |
| `hostPssKb` | {'int': 102} |
| `kind` | {'str': 102} |
| `memAvailableKb` | {'int': 102} |
| `memTotalKb` | {'int': 102} |
| `otherPssKb` | {'int': 102} |
| `processes` | {'int': 102} |
| `pssFallbackProcesses` | {'int': 102} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
