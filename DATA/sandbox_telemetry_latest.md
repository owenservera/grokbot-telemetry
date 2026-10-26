# sandbox_telemetry_parse — 2026-10-26 21:07:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=139452 lines=312
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 307 |
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
| `chromeBrowserPssKb` | {'int': 307} |
| `chromeGpuPssKb` | {'int': 307} |
| `chromeOtherPssKb` | {'int': 307} |
| `chromeProcesses` | {'int': 307} |
| `chromeProfiles` | {'int': 307} |
| `chromeRendererMaxPssKb` | {'int': 307} |
| `chromeRendererPssKb` | {'int': 307} |
| `chromeRenderers` | {'int': 307} |
| `chromeTabs` | {'int': 307} |
| `chromeTabsProbedProfiles` | {'int': 307} |
| `chromeUtilityPssKb` | {'int': 307} |
| `desktopPssKb` | {'int': 307} |
| `hostPssKb` | {'int': 307} |
| `kind` | {'str': 307} |
| `memAvailableKb` | {'int': 307} |
| `memTotalKb` | {'int': 307} |
| `otherPssKb` | {'int': 307} |
| `processes` | {'int': 307} |
| `pssFallbackProcesses` | {'int': 307} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
