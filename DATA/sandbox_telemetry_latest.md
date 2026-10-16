# sandbox_telemetry_parse — 2026-10-16 15:23:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=575795 lines=2152
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1422 |
| `memory_sample` | 721 |
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
| `chromeBrowserPssKb` | {'int': 721} |
| `chromeGpuPssKb` | {'int': 721} |
| `chromeOtherPssKb` | {'int': 721} |
| `chromeProcesses` | {'int': 721} |
| `chromeProfiles` | {'int': 721} |
| `chromeRendererMaxPssKb` | {'int': 721} |
| `chromeRendererPssKb` | {'int': 721} |
| `chromeRenderers` | {'int': 721} |
| `chromeTabs` | {'int': 721} |
| `chromeTabsProbedProfiles` | {'int': 721} |
| `chromeUtilityPssKb` | {'int': 721} |
| `desktopPssKb` | {'int': 721} |
| `hostPssKb` | {'int': 721} |
| `kind` | {'str': 721} |
| `memAvailableKb` | {'int': 721} |
| `memTotalKb` | {'int': 721} |
| `otherPssKb` | {'int': 721} |
| `processes` | {'int': 721} |
| `pssFallbackProcesses` | {'int': 721} |

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
| `cpuMillicores` | {'int': 1419} |
| `display` | {'int': 1422} |
| `kind` | {'str': 1422} |
| `processes` | {'int': 1422} |
| `pssKb` | {'int': 1422} |
| `rendererMaxPssKb` | {'int': 1422} |
| `renderers` | {'int': 1422} |
| `tabs` | {'int': 1421} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
