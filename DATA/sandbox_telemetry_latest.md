# sandbox_telemetry_parse — 2026-10-27 06:38:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=373856 lines=830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 825 |
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
| `chromeBrowserPssKb` | {'int': 825} |
| `chromeGpuPssKb` | {'int': 825} |
| `chromeOtherPssKb` | {'int': 825} |
| `chromeProcesses` | {'int': 825} |
| `chromeProfiles` | {'int': 825} |
| `chromeRendererMaxPssKb` | {'int': 825} |
| `chromeRendererPssKb` | {'int': 825} |
| `chromeRenderers` | {'int': 825} |
| `chromeTabs` | {'int': 825} |
| `chromeTabsProbedProfiles` | {'int': 825} |
| `chromeUtilityPssKb` | {'int': 825} |
| `desktopPssKb` | {'int': 825} |
| `hostPssKb` | {'int': 825} |
| `kind` | {'str': 825} |
| `memAvailableKb` | {'int': 825} |
| `memTotalKb` | {'int': 825} |
| `otherPssKb` | {'int': 825} |
| `processes` | {'int': 825} |
| `pssFallbackProcesses` | {'int': 825} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
