# sandbox_telemetry_parse — 2026-10-16 08:54:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=297310 lines=1111
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 728 |
| `memory_sample` | 374 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 374} |
| `chromeGpuPssKb` | {'int': 374} |
| `chromeOtherPssKb` | {'int': 374} |
| `chromeProcesses` | {'int': 374} |
| `chromeProfiles` | {'int': 374} |
| `chromeRendererMaxPssKb` | {'int': 374} |
| `chromeRendererPssKb` | {'int': 374} |
| `chromeRenderers` | {'int': 374} |
| `chromeTabs` | {'int': 374} |
| `chromeTabsProbedProfiles` | {'int': 374} |
| `chromeUtilityPssKb` | {'int': 374} |
| `desktopPssKb` | {'int': 374} |
| `hostPssKb` | {'int': 374} |
| `kind` | {'str': 374} |
| `memAvailableKb` | {'int': 374} |
| `memTotalKb` | {'int': 374} |
| `otherPssKb` | {'int': 374} |
| `processes` | {'int': 374} |
| `pssFallbackProcesses` | {'int': 374} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 725} |
| `display` | {'int': 728} |
| `kind` | {'str': 728} |
| `processes` | {'int': 728} |
| `pssKb` | {'int': 728} |
| `rendererMaxPssKb` | {'int': 728} |
| `renderers` | {'int': 728} |
| `tabs` | {'int': 727} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
