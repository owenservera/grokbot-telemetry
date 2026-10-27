# sandbox_telemetry_parse — 2026-10-27 05:29:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=345832 lines=768
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 763 |
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
| `chromeBrowserPssKb` | {'int': 763} |
| `chromeGpuPssKb` | {'int': 763} |
| `chromeOtherPssKb` | {'int': 763} |
| `chromeProcesses` | {'int': 763} |
| `chromeProfiles` | {'int': 763} |
| `chromeRendererMaxPssKb` | {'int': 763} |
| `chromeRendererPssKb` | {'int': 763} |
| `chromeRenderers` | {'int': 763} |
| `chromeTabs` | {'int': 763} |
| `chromeTabsProbedProfiles` | {'int': 763} |
| `chromeUtilityPssKb` | {'int': 763} |
| `desktopPssKb` | {'int': 763} |
| `hostPssKb` | {'int': 763} |
| `kind` | {'str': 763} |
| `memAvailableKb` | {'int': 763} |
| `memTotalKb` | {'int': 763} |
| `otherPssKb` | {'int': 763} |
| `processes` | {'int': 763} |
| `pssFallbackProcesses` | {'int': 763} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
