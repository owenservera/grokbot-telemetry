# sandbox_telemetry_parse — 2026-10-27 04:18:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=316452 lines=703
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 698 |
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
| `chromeBrowserPssKb` | {'int': 698} |
| `chromeGpuPssKb` | {'int': 698} |
| `chromeOtherPssKb` | {'int': 698} |
| `chromeProcesses` | {'int': 698} |
| `chromeProfiles` | {'int': 698} |
| `chromeRendererMaxPssKb` | {'int': 698} |
| `chromeRendererPssKb` | {'int': 698} |
| `chromeRenderers` | {'int': 698} |
| `chromeTabs` | {'int': 698} |
| `chromeTabsProbedProfiles` | {'int': 698} |
| `chromeUtilityPssKb` | {'int': 698} |
| `desktopPssKb` | {'int': 698} |
| `hostPssKb` | {'int': 698} |
| `kind` | {'str': 698} |
| `memAvailableKb` | {'int': 698} |
| `memTotalKb` | {'int': 698} |
| `otherPssKb` | {'int': 698} |
| `processes` | {'int': 698} |
| `pssFallbackProcesses` | {'int': 698} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
