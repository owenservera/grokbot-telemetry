# sandbox_telemetry_parse — 2026-10-12 04:11:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=624600 lines=1386
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1381 |
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
| `chromeBrowserPssKb` | {'int': 1381} |
| `chromeGpuPssKb` | {'int': 1381} |
| `chromeOtherPssKb` | {'int': 1381} |
| `chromeProcesses` | {'int': 1381} |
| `chromeProfiles` | {'int': 1381} |
| `chromeRendererMaxPssKb` | {'int': 1381} |
| `chromeRendererPssKb` | {'int': 1381} |
| `chromeRenderers` | {'int': 1381} |
| `chromeTabs` | {'int': 1381} |
| `chromeTabsProbedProfiles` | {'int': 1381} |
| `chromeUtilityPssKb` | {'int': 1381} |
| `desktopPssKb` | {'int': 1381} |
| `hostPssKb` | {'int': 1381} |
| `kind` | {'str': 1381} |
| `memAvailableKb` | {'int': 1381} |
| `memTotalKb` | {'int': 1381} |
| `otherPssKb` | {'int': 1381} |
| `processes` | {'int': 1381} |
| `pssFallbackProcesses` | {'int': 1381} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
