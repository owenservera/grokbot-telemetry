# sandbox_telemetry_parse — 2026-10-26 22:34:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=178410 lines=398
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 393 |
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
| `chromeBrowserPssKb` | {'int': 393} |
| `chromeGpuPssKb` | {'int': 393} |
| `chromeOtherPssKb` | {'int': 393} |
| `chromeProcesses` | {'int': 393} |
| `chromeProfiles` | {'int': 393} |
| `chromeRendererMaxPssKb` | {'int': 393} |
| `chromeRendererPssKb` | {'int': 393} |
| `chromeRenderers` | {'int': 393} |
| `chromeTabs` | {'int': 393} |
| `chromeTabsProbedProfiles` | {'int': 393} |
| `chromeUtilityPssKb` | {'int': 393} |
| `desktopPssKb` | {'int': 393} |
| `hostPssKb` | {'int': 393} |
| `kind` | {'str': 393} |
| `memAvailableKb` | {'int': 393} |
| `memTotalKb` | {'int': 393} |
| `otherPssKb` | {'int': 393} |
| `processes` | {'int': 393} |
| `pssFallbackProcesses` | {'int': 393} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
