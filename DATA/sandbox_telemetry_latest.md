# sandbox_telemetry_parse — 2026-10-27 04:40:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=325040 lines=722
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 717 |
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
| `chromeBrowserPssKb` | {'int': 717} |
| `chromeGpuPssKb` | {'int': 717} |
| `chromeOtherPssKb` | {'int': 717} |
| `chromeProcesses` | {'int': 717} |
| `chromeProfiles` | {'int': 717} |
| `chromeRendererMaxPssKb` | {'int': 717} |
| `chromeRendererPssKb` | {'int': 717} |
| `chromeRenderers` | {'int': 717} |
| `chromeTabs` | {'int': 717} |
| `chromeTabsProbedProfiles` | {'int': 717} |
| `chromeUtilityPssKb` | {'int': 717} |
| `desktopPssKb` | {'int': 717} |
| `hostPssKb` | {'int': 717} |
| `kind` | {'str': 717} |
| `memAvailableKb` | {'int': 717} |
| `memTotalKb` | {'int': 717} |
| `otherPssKb` | {'int': 717} |
| `processes` | {'int': 717} |
| `pssFallbackProcesses` | {'int': 717} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
