# sandbox_telemetry_parse — 2026-10-06 19:19:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=554234 lines=1220
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1215 |
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
| `chromeBrowserPssKb` | {'int': 1215} |
| `chromeGpuPssKb` | {'int': 1215} |
| `chromeOtherPssKb` | {'int': 1215} |
| `chromeProcesses` | {'int': 1215} |
| `chromeProfiles` | {'int': 1215} |
| `chromeRendererMaxPssKb` | {'int': 1215} |
| `chromeRendererPssKb` | {'int': 1215} |
| `chromeRenderers` | {'int': 1215} |
| `chromeTabs` | {'int': 1215} |
| `chromeTabsProbedProfiles` | {'int': 1215} |
| `chromeUtilityPssKb` | {'int': 1215} |
| `desktopPssKb` | {'int': 1215} |
| `hostPssKb` | {'int': 1215} |
| `kind` | {'str': 1215} |
| `memAvailableKb` | {'int': 1215} |
| `memTotalKb` | {'int': 1215} |
| `otherPssKb` | {'int': 1215} |
| `processes` | {'int': 1215} |
| `pssFallbackProcesses` | {'int': 1215} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
