# sandbox_telemetry_parse — 2026-10-06 03:01:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=112370 lines=251
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 246 |
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
| `chromeBrowserPssKb` | {'int': 246} |
| `chromeGpuPssKb` | {'int': 246} |
| `chromeOtherPssKb` | {'int': 246} |
| `chromeProcesses` | {'int': 246} |
| `chromeProfiles` | {'int': 246} |
| `chromeRendererMaxPssKb` | {'int': 246} |
| `chromeRendererPssKb` | {'int': 246} |
| `chromeRenderers` | {'int': 246} |
| `chromeTabs` | {'int': 246} |
| `chromeTabsProbedProfiles` | {'int': 246} |
| `chromeUtilityPssKb` | {'int': 246} |
| `desktopPssKb` | {'int': 246} |
| `hostPssKb` | {'int': 246} |
| `kind` | {'str': 246} |
| `memAvailableKb` | {'int': 246} |
| `memTotalKb` | {'int': 246} |
| `otherPssKb` | {'int': 246} |
| `processes` | {'int': 246} |
| `pssFallbackProcesses` | {'int': 246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
