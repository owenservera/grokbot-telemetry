# sandbox_telemetry_parse — 2026-10-06 05:52:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=189890 lines=421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 416 |
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
| `chromeBrowserPssKb` | {'int': 416} |
| `chromeGpuPssKb` | {'int': 416} |
| `chromeOtherPssKb` | {'int': 416} |
| `chromeProcesses` | {'int': 416} |
| `chromeProfiles` | {'int': 416} |
| `chromeRendererMaxPssKb` | {'int': 416} |
| `chromeRendererPssKb` | {'int': 416} |
| `chromeRenderers` | {'int': 416} |
| `chromeTabs` | {'int': 416} |
| `chromeTabsProbedProfiles` | {'int': 416} |
| `chromeUtilityPssKb` | {'int': 416} |
| `desktopPssKb` | {'int': 416} |
| `hostPssKb` | {'int': 416} |
| `kind` | {'str': 416} |
| `memAvailableKb` | {'int': 416} |
| `memTotalKb` | {'int': 416} |
| `otherPssKb` | {'int': 416} |
| `processes` | {'int': 416} |
| `pssFallbackProcesses` | {'int': 416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
