# sandbox_telemetry_parse — 2026-10-07 10:00:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=951133 lines=2090
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2085 |
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
| `chromeBrowserPssKb` | {'int': 2085} |
| `chromeGpuPssKb` | {'int': 2085} |
| `chromeOtherPssKb` | {'int': 2085} |
| `chromeProcesses` | {'int': 2085} |
| `chromeProfiles` | {'int': 2085} |
| `chromeRendererMaxPssKb` | {'int': 2085} |
| `chromeRendererPssKb` | {'int': 2085} |
| `chromeRenderers` | {'int': 2085} |
| `chromeTabs` | {'int': 2085} |
| `chromeTabsProbedProfiles` | {'int': 2085} |
| `chromeUtilityPssKb` | {'int': 2085} |
| `desktopPssKb` | {'int': 2085} |
| `hostPssKb` | {'int': 2085} |
| `kind` | {'str': 2085} |
| `memAvailableKb` | {'int': 2085} |
| `memTotalKb` | {'int': 2085} |
| `otherPssKb` | {'int': 2085} |
| `processes` | {'int': 2085} |
| `pssFallbackProcesses` | {'int': 2085} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
