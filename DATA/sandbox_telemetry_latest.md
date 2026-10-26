# sandbox_telemetry_parse — 2026-10-26 22:39:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=180222 lines=402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 397 |
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
| `chromeBrowserPssKb` | {'int': 397} |
| `chromeGpuPssKb` | {'int': 397} |
| `chromeOtherPssKb` | {'int': 397} |
| `chromeProcesses` | {'int': 397} |
| `chromeProfiles` | {'int': 397} |
| `chromeRendererMaxPssKb` | {'int': 397} |
| `chromeRendererPssKb` | {'int': 397} |
| `chromeRenderers` | {'int': 397} |
| `chromeTabs` | {'int': 397} |
| `chromeTabsProbedProfiles` | {'int': 397} |
| `chromeUtilityPssKb` | {'int': 397} |
| `desktopPssKb` | {'int': 397} |
| `hostPssKb` | {'int': 397} |
| `kind` | {'str': 397} |
| `memAvailableKb` | {'int': 397} |
| `memTotalKb` | {'int': 397} |
| `otherPssKb` | {'int': 397} |
| `processes` | {'int': 397} |
| `pssFallbackProcesses` | {'int': 397} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
