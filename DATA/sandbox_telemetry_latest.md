# sandbox_telemetry_parse — 2026-10-06 05:21:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=176210 lines=391
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 386 |
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
| `chromeBrowserPssKb` | {'int': 386} |
| `chromeGpuPssKb` | {'int': 386} |
| `chromeOtherPssKb` | {'int': 386} |
| `chromeProcesses` | {'int': 386} |
| `chromeProfiles` | {'int': 386} |
| `chromeRendererMaxPssKb` | {'int': 386} |
| `chromeRendererPssKb` | {'int': 386} |
| `chromeRenderers` | {'int': 386} |
| `chromeTabs` | {'int': 386} |
| `chromeTabsProbedProfiles` | {'int': 386} |
| `chromeUtilityPssKb` | {'int': 386} |
| `desktopPssKb` | {'int': 386} |
| `hostPssKb` | {'int': 386} |
| `kind` | {'str': 386} |
| `memAvailableKb` | {'int': 386} |
| `memTotalKb` | {'int': 386} |
| `otherPssKb` | {'int': 386} |
| `processes` | {'int': 386} |
| `pssFallbackProcesses` | {'int': 386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
