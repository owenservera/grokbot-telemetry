# sandbox_telemetry_parse — 2026-10-07 06:23:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=852637 lines=1874
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1869 |
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
| `chromeBrowserPssKb` | {'int': 1869} |
| `chromeGpuPssKb` | {'int': 1869} |
| `chromeOtherPssKb` | {'int': 1869} |
| `chromeProcesses` | {'int': 1869} |
| `chromeProfiles` | {'int': 1869} |
| `chromeRendererMaxPssKb` | {'int': 1869} |
| `chromeRendererPssKb` | {'int': 1869} |
| `chromeRenderers` | {'int': 1869} |
| `chromeTabs` | {'int': 1869} |
| `chromeTabsProbedProfiles` | {'int': 1869} |
| `chromeUtilityPssKb` | {'int': 1869} |
| `desktopPssKb` | {'int': 1869} |
| `hostPssKb` | {'int': 1869} |
| `kind` | {'str': 1869} |
| `memAvailableKb` | {'int': 1869} |
| `memTotalKb` | {'int': 1869} |
| `otherPssKb` | {'int': 1869} |
| `processes` | {'int': 1869} |
| `pssFallbackProcesses` | {'int': 1869} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
