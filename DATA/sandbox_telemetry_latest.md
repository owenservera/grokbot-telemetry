# sandbox_telemetry_parse — 2026-10-16 13:59:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=510789 lines=1909
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1260 |
| `memory_sample` | 640 |
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
| `chromeBrowserPssKb` | {'int': 640} |
| `chromeGpuPssKb` | {'int': 640} |
| `chromeOtherPssKb` | {'int': 640} |
| `chromeProcesses` | {'int': 640} |
| `chromeProfiles` | {'int': 640} |
| `chromeRendererMaxPssKb` | {'int': 640} |
| `chromeRendererPssKb` | {'int': 640} |
| `chromeRenderers` | {'int': 640} |
| `chromeTabs` | {'int': 640} |
| `chromeTabsProbedProfiles` | {'int': 640} |
| `chromeUtilityPssKb` | {'int': 640} |
| `desktopPssKb` | {'int': 640} |
| `hostPssKb` | {'int': 640} |
| `kind` | {'str': 640} |
| `memAvailableKb` | {'int': 640} |
| `memTotalKb` | {'int': 640} |
| `otherPssKb` | {'int': 640} |
| `processes` | {'int': 640} |
| `pssFallbackProcesses` | {'int': 640} |

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
| `cpuMillicores` | {'int': 1257} |
| `display` | {'int': 1260} |
| `kind` | {'str': 1260} |
| `processes` | {'int': 1260} |
| `pssKb` | {'int': 1260} |
| `rendererMaxPssKb` | {'int': 1260} |
| `renderers` | {'int': 1260} |
| `tabs` | {'int': 1259} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
