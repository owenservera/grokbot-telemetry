# sandbox_telemetry_parse — 2026-10-07 03:06:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=765996 lines=1684
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1679 |
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
| `chromeBrowserPssKb` | {'int': 1679} |
| `chromeGpuPssKb` | {'int': 1679} |
| `chromeOtherPssKb` | {'int': 1679} |
| `chromeProcesses` | {'int': 1679} |
| `chromeProfiles` | {'int': 1679} |
| `chromeRendererMaxPssKb` | {'int': 1679} |
| `chromeRendererPssKb` | {'int': 1679} |
| `chromeRenderers` | {'int': 1679} |
| `chromeTabs` | {'int': 1679} |
| `chromeTabsProbedProfiles` | {'int': 1679} |
| `chromeUtilityPssKb` | {'int': 1679} |
| `desktopPssKb` | {'int': 1679} |
| `hostPssKb` | {'int': 1679} |
| `kind` | {'str': 1679} |
| `memAvailableKb` | {'int': 1679} |
| `memTotalKb` | {'int': 1679} |
| `otherPssKb` | {'int': 1679} |
| `processes` | {'int': 1679} |
| `pssFallbackProcesses` | {'int': 1679} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
