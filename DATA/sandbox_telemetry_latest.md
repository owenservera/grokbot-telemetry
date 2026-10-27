# sandbox_telemetry_parse — 2026-10-27 01:50:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=256326 lines=570
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 565 |
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
| `chromeBrowserPssKb` | {'int': 565} |
| `chromeGpuPssKb` | {'int': 565} |
| `chromeOtherPssKb` | {'int': 565} |
| `chromeProcesses` | {'int': 565} |
| `chromeProfiles` | {'int': 565} |
| `chromeRendererMaxPssKb` | {'int': 565} |
| `chromeRendererPssKb` | {'int': 565} |
| `chromeRenderers` | {'int': 565} |
| `chromeTabs` | {'int': 565} |
| `chromeTabsProbedProfiles` | {'int': 565} |
| `chromeUtilityPssKb` | {'int': 565} |
| `desktopPssKb` | {'int': 565} |
| `hostPssKb` | {'int': 565} |
| `kind` | {'str': 565} |
| `memAvailableKb` | {'int': 565} |
| `memTotalKb` | {'int': 565} |
| `otherPssKb` | {'int': 565} |
| `processes` | {'int': 565} |
| `pssFallbackProcesses` | {'int': 565} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
