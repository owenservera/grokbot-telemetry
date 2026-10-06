# sandbox_telemetry_parse — 2026-10-06 09:14:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=281546 lines=622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 617 |
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
| `chromeBrowserPssKb` | {'int': 617} |
| `chromeGpuPssKb` | {'int': 617} |
| `chromeOtherPssKb` | {'int': 617} |
| `chromeProcesses` | {'int': 617} |
| `chromeProfiles` | {'int': 617} |
| `chromeRendererMaxPssKb` | {'int': 617} |
| `chromeRendererPssKb` | {'int': 617} |
| `chromeRenderers` | {'int': 617} |
| `chromeTabs` | {'int': 617} |
| `chromeTabsProbedProfiles` | {'int': 617} |
| `chromeUtilityPssKb` | {'int': 617} |
| `desktopPssKb` | {'int': 617} |
| `hostPssKb` | {'int': 617} |
| `kind` | {'str': 617} |
| `memAvailableKb` | {'int': 617} |
| `memTotalKb` | {'int': 617} |
| `otherPssKb` | {'int': 617} |
| `processes` | {'int': 617} |
| `pssFallbackProcesses` | {'int': 617} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
