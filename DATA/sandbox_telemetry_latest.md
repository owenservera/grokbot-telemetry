# sandbox_telemetry_parse — 2026-10-26 19:38:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=101853 lines=229
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 224 |
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
| `chromeBrowserPssKb` | {'int': 224} |
| `chromeGpuPssKb` | {'int': 224} |
| `chromeOtherPssKb` | {'int': 224} |
| `chromeProcesses` | {'int': 224} |
| `chromeProfiles` | {'int': 224} |
| `chromeRendererMaxPssKb` | {'int': 224} |
| `chromeRendererPssKb` | {'int': 224} |
| `chromeRenderers` | {'int': 224} |
| `chromeTabs` | {'int': 224} |
| `chromeTabsProbedProfiles` | {'int': 224} |
| `chromeUtilityPssKb` | {'int': 224} |
| `desktopPssKb` | {'int': 224} |
| `hostPssKb` | {'int': 224} |
| `kind` | {'str': 224} |
| `memAvailableKb` | {'int': 224} |
| `memTotalKb` | {'int': 224} |
| `otherPssKb` | {'int': 224} |
| `processes` | {'int': 224} |
| `pssFallbackProcesses` | {'int': 224} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
