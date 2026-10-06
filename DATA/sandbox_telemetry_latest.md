# sandbox_telemetry_parse — 2026-10-06 06:28:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=206306 lines=457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 452 |
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
| `chromeBrowserPssKb` | {'int': 452} |
| `chromeGpuPssKb` | {'int': 452} |
| `chromeOtherPssKb` | {'int': 452} |
| `chromeProcesses` | {'int': 452} |
| `chromeProfiles` | {'int': 452} |
| `chromeRendererMaxPssKb` | {'int': 452} |
| `chromeRendererPssKb` | {'int': 452} |
| `chromeRenderers` | {'int': 452} |
| `chromeTabs` | {'int': 452} |
| `chromeTabsProbedProfiles` | {'int': 452} |
| `chromeUtilityPssKb` | {'int': 452} |
| `desktopPssKb` | {'int': 452} |
| `hostPssKb` | {'int': 452} |
| `kind` | {'str': 452} |
| `memAvailableKb` | {'int': 452} |
| `memTotalKb` | {'int': 452} |
| `otherPssKb` | {'int': 452} |
| `processes` | {'int': 452} |
| `pssFallbackProcesses` | {'int': 452} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
