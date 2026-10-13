# sandbox_telemetry_parse — 2026-10-13 06:57:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=902583 lines=2195
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1863 |
| `chrome_profile_sample` | 324 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1863} |
| `chromeGpuPssKb` | {'int': 1863} |
| `chromeOtherPssKb` | {'int': 1863} |
| `chromeProcesses` | {'int': 1863} |
| `chromeProfiles` | {'int': 1863} |
| `chromeRendererMaxPssKb` | {'int': 1863} |
| `chromeRendererPssKb` | {'int': 1863} |
| `chromeRenderers` | {'int': 1863} |
| `chromeTabs` | {'int': 1863} |
| `chromeTabsProbedProfiles` | {'int': 1863} |
| `chromeUtilityPssKb` | {'int': 1863} |
| `desktopPssKb` | {'int': 1863} |
| `hostPssKb` | {'int': 1863} |
| `kind` | {'str': 1863} |
| `memAvailableKb` | {'int': 1863} |
| `memTotalKb` | {'int': 1863} |
| `otherPssKb` | {'int': 1863} |
| `processes` | {'int': 1863} |
| `pssFallbackProcesses` | {'int': 1863} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 323} |
| `display` | {'int': 324} |
| `kind` | {'str': 324} |
| `processes` | {'int': 324} |
| `pssKb` | {'int': 324} |
| `rendererMaxPssKb` | {'int': 324} |
| `renderers` | {'int': 324} |
| `tabs` | {'int': 324} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
