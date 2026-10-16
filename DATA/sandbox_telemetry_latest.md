# sandbox_telemetry_parse — 2026-10-16 06:54:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=207420 lines=775
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 504 |
| `memory_sample` | 262 |
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
| `chromeBrowserPssKb` | {'int': 262} |
| `chromeGpuPssKb` | {'int': 262} |
| `chromeOtherPssKb` | {'int': 262} |
| `chromeProcesses` | {'int': 262} |
| `chromeProfiles` | {'int': 262} |
| `chromeRendererMaxPssKb` | {'int': 262} |
| `chromeRendererPssKb` | {'int': 262} |
| `chromeRenderers` | {'int': 262} |
| `chromeTabs` | {'int': 262} |
| `chromeTabsProbedProfiles` | {'int': 262} |
| `chromeUtilityPssKb` | {'int': 262} |
| `desktopPssKb` | {'int': 262} |
| `hostPssKb` | {'int': 262} |
| `kind` | {'str': 262} |
| `memAvailableKb` | {'int': 262} |
| `memTotalKb` | {'int': 262} |
| `otherPssKb` | {'int': 262} |
| `processes` | {'int': 262} |
| `pssFallbackProcesses` | {'int': 262} |

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
| `cpuMillicores` | {'int': 501} |
| `display` | {'int': 504} |
| `kind` | {'str': 504} |
| `processes` | {'int': 504} |
| `pssKb` | {'int': 504} |
| `rendererMaxPssKb` | {'int': 504} |
| `renderers` | {'int': 504} |
| `tabs` | {'int': 503} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
