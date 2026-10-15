# sandbox_telemetry_parse — 2026-10-15 10:38:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=815326 lines=1808
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1803 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1803} |
| `chromeGpuPssKb` | {'int': 1803} |
| `chromeOtherPssKb` | {'int': 1803} |
| `chromeProcesses` | {'int': 1803} |
| `chromeProfiles` | {'int': 1803} |
| `chromeRendererMaxPssKb` | {'int': 1803} |
| `chromeRendererPssKb` | {'int': 1803} |
| `chromeRenderers` | {'int': 1803} |
| `chromeTabs` | {'int': 1803} |
| `chromeTabsProbedProfiles` | {'int': 1803} |
| `chromeUtilityPssKb` | {'int': 1803} |
| `desktopPssKb` | {'int': 1803} |
| `hostPssKb` | {'int': 1803} |
| `kind` | {'str': 1803} |
| `memAvailableKb` | {'int': 1803} |
| `memTotalKb` | {'int': 1803} |
| `otherPssKb` | {'int': 1803} |
| `processes` | {'int': 1803} |
| `pssFallbackProcesses` | {'int': 1803} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
